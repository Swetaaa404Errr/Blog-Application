
# Blog-Application

## README

This README documents the necessary steps to get the application up and running.

### Prerequisites

- Ruby version: 3.1.2
- Rails version: 7.1.3.4

### Setup Instructions

1. **Clone the Repository**

    ```bash
    git clone https://github.com/Swetaaa404Errr/Blog-Application.git
    cd Blog-Application
    ```

2. **Install Dependencies**

    ```bash
    bundle install
    ```

3. **Set Up the Database**

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```

    The `db:seed` command will create dummy data. After logging in as one of the users, all features can be seen.

4. **Start the Server**

    ```bash
    rails s
    ```

5. **Access the Application**

    Open your web browser and go to `http://localhost:3000`.

### Features

- User authentication (Devise gem)
- Create, read, update, and delete (CRUD) blog posts
- Save posts as draft or publish them
- Add comments to posts
- Attach images and videos to posts


### Screenshots

![image](https://github.com/Swetaaa404Errr/Blog-Application/assets/97388868/fc9bf68c-a95f-4a2a-812a-549ce6c9efcd)

![image](https://github.com/Swetaaa404Errr/Blog-Application/assets/97388868/f706292a-ee5f-4efe-917e-622ad49a4770)



