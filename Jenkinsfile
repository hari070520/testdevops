node {
def app
stage('CheckOut'){
checkout scm
echo 'checkout successful'
}
stage('Build Image'){
//app=docker.build("my-image:${env.BUILD_ID}")
app=docker.build("hari070520/test")
echo 'build image successful'
}
stage('Test image'){
app.inside{
sh 'echo "Test Passed"'
}
}
stage('Push Image'){
docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        
        /* Push the container to the custom Registry */
        app.push("${env.BUILD_ID}")
        app.push("latest")
    }
}
}
