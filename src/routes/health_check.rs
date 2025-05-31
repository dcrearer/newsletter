//! src/routes/health_check.rs
use actix_web::HttpResponse;
#[tracing::instrument(name = "Health check")]
pub async fn health_check() -> HttpResponse {
    HttpResponse::Ok().finish()
}
