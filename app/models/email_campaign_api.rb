class EmailCampaignApi

  def self.add_or_update_mobility_list user 
    email_list_id = "#{silverFit::Application.config.MOBILITY_LIST_ID}"
    gb = Gibbon::API.new
    gb.lists.subscribe({
      :id=> email_list_id, 
      :email => {:email => user.email}, 
      :double_optin => false})
  end 

  def self.remove_from_mobility_list user
    email_list_id = "#{silverFit::Application.config.MOBILITY_LIST_ID}"
    gb = Gibbon::API.new
    gb.lists.unsubscribe({
      :id => email_list_id,
      :email => {:email => user.email},
    })
  end


  # Example of more complicated merge_vars
  #   gb.lists.subscribe({
  #     :id => "#{Babylist::Application.config.MAILCHIMP_MASTER_BABYLIST_ID}",
  #     :email => {:email => user.email},
  #     :merge_vars => {
  #       :SETTINGS => Rails.application.routes.url_helpers.email_settings_show_url(email: user.email, token: user.single_access_token, host: 'www.babyli.st'),
  #       :CREATED_AT => user.created_at,
  #       # 5 is id of master lists groups, lists are named in concert with the email levels so we can just humanize
  #       :groupings => { 1 => {:id => 5, :groups => [user.email_level.value.humanize]}} 
  #       },
  #     :update_existing => true, :double_optin => false, :replace_interests => true    
  #   })

end