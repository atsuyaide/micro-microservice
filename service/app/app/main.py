from fastapi import FastAPI

app = FastAPI()


@app.get("/v1/users/{user_id}")
def users(user_id):
    return {"user_id": user_id}
