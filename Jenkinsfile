
node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/sergio00/spring-petclinic.git'
    
   }
   stage('Build Maven Image') {
        docker.build("maven-build")
   }
   
   stage('Run Maven Container') {
       
        //Remove maven-build-container if it exisits
        //sh " docker rm -f maven-build-container"
        
        //Run maven image
        sh "docker run --rm --name maven-build-container maven-build"
   }
   
   stage('Deploy Spring Boot Application') {
        
         //Remove maven-build-container if it exisits   denisdbell/petclinic-deploy 
        sh " docker rm -f java-deploy-container"  
       
        //sh "docker run --name java-deploy-container --volumes-from maven-build -d -p 8090:8080 denisdbell/petclinic-deploy"
        sh "docker run --name java-deploy-container -d -p 8095:8080 denisdbell/petclinic-deploy"
   }

}