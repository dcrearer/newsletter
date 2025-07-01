//! src/authentication/mod.rs
mod middleware;
mod password;

pub use password::{AuthError, Credentials, change_password, validate_credentials};

pub use middleware::reject_anonymous_users;

pub use middleware::UserId;
