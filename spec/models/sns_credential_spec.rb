require 'rails_helper'

describe SnsCredential do

  describe '#create' do

    it "is valid with a uid, provider, user_id" do
      sns_credential = build(:sns_credential)
      expect(sns_credential).to be_valid
    end

    it "is invalid without a uid" do
      sns_credential = build(:sns_credential, uid: "")
      sns_credential.valid?
      expect(sns_credential.errors[:uid]).to include("can't be blank")
    end

    it "is invalid without a provider" do
      sns_credential = build(:sns_credential, provider: "")
      sns_credential.valid?
      expect(sns_credential.errors[:provider]).to include("can't be blank")
    end

  end
end
