# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    Sinatra was used to build the app as shown in the controller files.
- [x] Use ActiveRecord for storing information in a database
    ActiveRecord was used to store information as shown in the model files.
- [x] Include more than one model class (e.g. User, Post, Category)
    Three models are included: User, Post, Park.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    There are two has_many relationships (User has_many Posts, and User has_many Parks through Posts).
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    There are two belongs_to relationships (Post belongs_to User, and Post belongs_to Park).
- [x] Include user accounts with unique login attribute (username or email)
    User accounts are available and the unique login attribute is username.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    The Post resource has routes for CRUD as shown in the posts_controller file.
- [x] Ensure that users can't modify content created by other users
    Users cannot modify content created by other users as shown in the patch '/posts/:id' route.
- [x] Include user input validations
    User input validations are included as shown in the post and user models with validation of presence and uniqueness.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    Validation failures are displayed to user with error messages as shown in the posts_controller and users_controller files.
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
    There are over 100 commits for this project on github.
- [x] Your commit messages are meaningful
    Commit messages are concise and meaningful.
- [x] You made the changes in a commit that relate to the commit message
    Changes in commits are related to the commit message.
- [x] You don't include changes in a commit that aren't related to the commit message
    Only changes that are related to the commit message are committed.
