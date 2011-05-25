require File.join(File.dirname(__FILE__), 'named_arg')

module Cucumber
  class FeatureGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path("../templates", __FILE__)

    argument :fields, :optional => true, :type => :array, :banner => "[field:type, field:type]"

    attr_reader :named_args

    def underscore_singular_name
      @underscore_singular_name ||= class_name.underscore
    end

    def underscore_plural_name
      @underscore_plural_name ||= underscore_singular_name.pluralize
    end

    def parse_fields
      @named_args = @fields.nil? ? [] : @fields.map { |arg| NamedArg.new(arg) }
    end

    def generate
      empty_directory 'features/step_definitions'
      template 'feature.erb', "features/manage_#{plural_table_name}.feature"
      template 'steps.erb', "features/step_definitions/#{singular_table_name}_steps.rb"
      gsub_file 'features/support/paths.rb', /'\/'/mi do |match|
        "#{match}\n    when %r{the new #{class_name.underscore.gsub(/\//, "[/_ ]")} page}\n      new_#{singular_table_name}_path\n"
      end
    end

    def self.banner
      "#{$0} cucumber:feature ModelName [field:type, field:type]"
    end
  end
end
