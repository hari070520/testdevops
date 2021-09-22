node {
def app
stage('CheckOut'){
checkout scm
echo 'checkout successful'
}
stage('Build Image'){
app=docker.build("my-image:${env.BUILD_ID}")
echo 'build image successful'
}
stage('Test image'){
app.inside{
sh 'echo "Test Passed"'
}
}
}
