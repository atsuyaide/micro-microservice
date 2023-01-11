from app.main import app
from fastapi.testclient import TestClient

client = TestClient(app)


def test_get_user() -> None:
    response = client.get("/v1/users/testuser")
    assert response.status_code == 200
    assert response.json() == {"user_id": "testuser"}
