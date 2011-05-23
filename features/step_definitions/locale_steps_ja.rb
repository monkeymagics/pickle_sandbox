# -*- coding: utf-8 -*-

Given /^ロケールを"([^"]*)"に設定する/ do |locale|
  I18n.locale = locale
end
