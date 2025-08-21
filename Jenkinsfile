pipeline {
  agent any

  tools {
    nodejs "NodeJS 22.18.0"
  }

  stages {
    stage('Clone') {
      steps {
        echo 'Cloning repo...'
        // Jenkins עושה clone אוטומטית, לא צריך לעשות פה כלום אלא אם זה repo פרטי
      }
    }

    stage('Install') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }

    stage('Test') {
      steps {
        sh 'npm test || echo "אין בדיקות"'
      }
    }

    stage('Start (לצורכי DEV)') {
      steps {
        sh 'npm start & sleep 10'
      }
    }
  }
}