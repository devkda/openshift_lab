import uvicorn
from starlette.responses import JSONResponse
from starlette.applications import Starlette

app = Starlette(debug=True)


@app.route('/')
async def homepage(request):
    return JSONResponse({'message': "OK"})


if __name__ == '__main__':
    uvicorn.run(app, host='0.0.0.0', port=8080)
