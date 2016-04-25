require "active_support/concern"
module RedmineDigest
  # Patches Redmine's Users dynamically.  Adds a relation to digest_account.
  module UserPatch
    extend ActiveSupport::Concern

    included do
        unloadable # Send unloadable so it will not be unloaded in development

        has_one :digest_account
        accepts_nested_attributes_for :digest_account
        safe_attributes 'digest_account'
        safe_attributes 'digest_account_attributes'
    end
  end
end

