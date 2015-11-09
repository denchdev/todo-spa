require 'rails_helper'

RSpec.describe "AttachedFiles", type: :request do
  describe "GET /attached_files" do
    it "works! (now write some real specs)" do
      get attached_files_path
      expect(response).to have_http_status(200)
    end
  end
end
