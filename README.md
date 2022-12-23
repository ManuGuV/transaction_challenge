# Transaction_challenge
System to send an email based on the data collected from a csv file. This script also generates a 'docx' file that is included in the email sent and is stored in **{path to folder}/resources/email**

### How to run the script
1. Clone the repository
```
git clone https://github.com/ManuGuV/transaction_challenge.git
```
2. Go into the project folder and build the docker image, make sure the docker daemon is running
```
docker build .
```
3. Using the docker image id execute the docker image
```
Windows
docker run -v %cd%/data:/src/data -e EMAIL_USER=example@example.com -e EMAIL_PASS=password {image_id}
Linux/OSX
docker run -v $(pwd)/data:/src/data -e EMAIL_USER=example@example.com -e EMAIL_PASS=password {image_id}
For mounting data folder in OSX the path of data folder should be added to Preferences -> Resources -> File Sharing -> +
```
