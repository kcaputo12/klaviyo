- connection: segment

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: email_bounced
  label: "Bounced Emails"
  
- explore: email_delivered
  label: "Email Behavior"
  joins:
    - join: email_link_clicked
      sql_on: ${email_delivered.id} = ${email_link_clicked.id}
      relationship: one_to_many
    
    - join: email_opened 
      sql_on: ${email_delivered.id} = ${email_opened.id}
      relationship: one_to_many
     
- explore: email_link_clicked
  label: "Link Clicked"

- explore: email_marked_as_spam
  label: "Marked as Spam"

- explore: email_opened
  label: "Opened"

- explore: email_unsubscribed
  label: "Unsubscribed"

- explore: tracks

