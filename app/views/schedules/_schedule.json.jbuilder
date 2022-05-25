# frozen_string_literal: true

json.extract! schedule, :id, :title, :start, :end, :location, :created_at, :updated_at
json.url project_schedules_path(format: :json)
