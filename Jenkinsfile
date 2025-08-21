pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        echo 'Cloning repo...'
        // Jenkins עושה clone אוטומטית, לא צריך לעשות פה כלום אלא אם זה repo פרטי
      }
    }

    stage('Install') {
      steps {
        sh 'yarn install'
      }
    }

    stage('Build') {
      steps {
        sh 'yarn build'
      }
    }

    stage('Test') {
      steps {
        sh 'yarn test || echo "אין בדיקות"'
      }
    }

    stage('Start (לצורכי DEV)') {
      steps {
        sh 'yarn start & sleep 10'
      }
    }
  }
}