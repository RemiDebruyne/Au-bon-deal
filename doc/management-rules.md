# Gestion Rules

## Handling database
- The database Au Bon Deal can only be entered via the user Au Bon Deal
- The Au Bon Deal user as all privileges in the Au Bon Deal database
- The Au Bon Deal user doesn't have any privileges outside of the Au Bon Deal database
- The abd user is the owner of the abd database

## Account creation
- username and pseudo must be unique
- username, pseudo and password are mandatory
- pseudo can contain special characters
- password must be 8 characters minimum
- password must contain at least one number
- password must contain at least one uppercase letter


## Users 
- Users can change their password whenever they want
- Users can change their pseudonyme whenever they want
- Users can delete their account whenever they want


## Orders
- Users must have an account to order
- Users must be logged in to order
- Orders can be cancelled before until they have been prepared
- Products quantity in an order must be superior to 0

## Products
- Product name and description are mandatory
- Product description cannot exeed 500 characters
- Product must have a quantity, even if it is 0
- Product price cannot be 0€