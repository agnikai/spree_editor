module SpreeEditor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../templates", __FILE__)

      def add_javascripts
        # append_file "app/assets/javascripts/spree/backend/all.js", "//= require admin/spree_editor\n"
      end

      def add_stylesheets
        # inject_into_file "app/assets/stylesheets/spree/backend/all.css", " *= require admin/spree_editor\n", :before => /\*\//, :verbose => true
      end

      def copy_tinymce_file
        copy_file "config/tinymce.yml", "config/tinymce.yml"
      end
    end
  end
end
