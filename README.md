# PRACTICE TASK - CONTAINERS AND SERVERLESS
# PART 1: CREATE AT LEAST 5 DOCKERS PROJECTS – 5 PROGRAMMING LANGUAGES
In this repository we create a file called Index.html which is a program in JavaScript language using the Visual Studio Code source code editor
# PART 2: ONCE THE FILE IS CREATED, CREATE A DOCKER IMAGE
### STEPS:
#### Step 1: Create a Dockerfile
1. In the same folder as the project, create a file called Dockerfile (without extension).
2. Add the following content to the Dockerfile:
   
FROM  node:14

WORKDIR /usr/src/app

COPY . .

CMD ["node", "app.js"]


#### Step 2: Build the Docker Image
1. Open the terminal in Visual Studio Code or in the command line.
2. Navigate to your project folder.
3. Run the following command to build the Docker image:
   
docker build -t hola-mundo-js .

#### Step 3: Run the Container
1. Once the image has been built successfully, run the following command to start the container:
   
docker run hola-mundo-js

# PART 3: PUSHING CHANGES TO GITHUB AND DOCKER HUB
## To push to github:
Open a terminal in your project folder and run the following commands:
1. Git init
2. Git add .
3. Git commit -m “feat:”
4. Create a repository on Github
5. Add the remote repository and upload the project with the following command lines:
   
git remote add origin <REPOSITORY_URL>

git branch -M main

git push -u origin main

## To upload the image to Docker Hub:
1. Log in to Docker Hub from the terminal with the following command line:
   
docker login

3. Tag the image with the username and the name of the Docker Hub repository.
   
docker tag hola-mundo-js <username>/ hola-mundo-js
   
5. Push the image to Docker Hub:
   
docker push <username>/ hola-mundo-js






