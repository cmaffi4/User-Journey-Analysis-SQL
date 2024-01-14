# Extracting User Journey Data Using SQL

The goal of this project was to write up a query to extract data for a subsequent user journey analysis. The idea is that someone in my company wants to analyze the sequence of pages visited leading to a purchase. For that purpose, I needed to group all the pages visited in a session into one string. I extracted the user journey of only those that have purchased a subscription plan. Moreover, I considered users that made their first purchase between January 1, 2023, and March 31, 2023, inclusive (i.e., Q1 2023).

The final output includes crucial business information such as user_id, session_id, subscription_type and user_journey.

Sometimes, aggregating or preprocessing data in SQL directly might be easier or more beneficial—precisely the purpose of this project. This Extracting User Journey Data with SQL project centers around creating a customer journey data extract as the starting point for later analysis. Here, “user journey” refers to the steps each user goes through while exploring the product or platform before purchasing. The context is an online subscription-based company offering monthly, quarterly, and annual subscription plans.

# Project files

The database I worked with consists of three tables: front_interactions , student_purchases , and front_visitors.

The front_interactions  table records all visitor activity on the company’s front page, including visiting specific pages, clicks, and other interactions on said pages. The table consists of the following six fields or columns:

- visitor_id  – (int) the ID number of the visitor
- session_id  – (int) the session number during which the interaction took place
- event_source_url  – (string) the URL of the page on which the given event took place
- event_destination_url   – (string) the URL of the page when the event was completed/processed (for interactions during which the user stays on the same page, this is the same as source URL)
- event_date   – (datetime) the exact timestamp of the event/interaction
- event_name   – (string) an internal name of the event

This table records all events on the front pages—from scrolling to clicking on buttons. The significant aspect regarding this project is that it also records the source and destination URLs for every event. These are the same for such interactions as scrolling or clicking on a form field. But when a visitor clicks on a page link, these two URLs would differ since they moved to a different page.

The next table was student_purchases, which contains records of user payments and the type of product they purchased. This includes all payments even if they are subsequent recurring payments for the same subscription. Its columns contain the following:

- user_id   – (int) the ID of the user, different from the visitor_id
- purchase_id   – (int) the ID of the purchase
- purchase_type   – (int) the type of subscription purchased (0=monthly, 1=quarterly, 2=annual)
- purchase_price   – (decimal) the price the user paid in dollars
- date_purchased   – (datetime) the exact datetime of the purchase

Notice that since the person needs to have purchased a product to be in this table and has an account, they are no longer considered as visitor, but user. It’s also noteworthy that the purchase price in this table can be used as an indicator for test users. If a user has purchased a product at $0, they’re probably just a test one.

The final table front_visitors was the link between front_interactions and student_purchases. There were only two columns in this table:

- visitor_id   – (int) the ID of the visitor—each record has this field filled in
- user_id   – (int) the ID of the user corresponding to this visitor—many NULL values here because many visitors never made an account and so were never assigned a user_id

From this table, I can determine which user corresponds to which visitor, bearing in mind that most visitors have never created an account and are not considered users.
