# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    let(:teams) { FactoryBot.create_list(:team, 2) }
    let(:projects) { FactoryBot.create_list(:project, 2) }

    describe 'when successful' do
      it 'returns status code 200' do
        get :index
        expect(response).to have_http_status(200)
      end

      it 'return no projects for not logged in user' do
        get :index
        expect(response).to render_template(:index)
        expect(assigns(:projects)).to eq(nil)
      end

      it 'return projects for logged in user' do
        update_user
        sign_in User.last
        get :index
        expect(response).to render_template(:index)
        expect(assigns(:projects)).not_to eq(nil)
      end
    end
  end

  def update_user
    teams
    User.last.update(team_id: Team.last.id)
  end

end
