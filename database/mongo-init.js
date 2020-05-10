db.createUser(
    {
        user: "mongo",
        pwd: "db_password",
        roles: [
            {
                role: "readWrite",
                db: "mydatabase"
            }
        ]
    }
);