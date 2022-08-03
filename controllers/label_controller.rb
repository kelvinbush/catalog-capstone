# frozen_string_literal: true

require 'json'
require 'fileutils'
require_relative '../lib/label'

class LabelController
  def initialize
    @labels_path = 'files/labels.json'
    File.write(@labels_path, []) unless File.exist?(@labels_path)
  end

  def load_labels
    loaded_labels = []
    labels = JSON.parse(File.read(@labels_path))
    labels.each do |label|
      loaded_labels << Label.new(label['title'], label['color'])
    end
    loaded_labels
  end

  def save_labels(labels)
    saved_labels = []
    labels.each do |label|
      saved_labels << {
        title: label.title,
        color: label.color
      }
    end
    File.write(@labels_path, JSON.generate(saved_labels))
  end
end
