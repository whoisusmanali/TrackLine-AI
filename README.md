# TracklineAI: Driver Performance and Fuel Management System

## Project Overview

**TracklineAI** is a comprehensive system designed for vehicle owners to manage and monitor driver performance, ensuring fuel efficiency and detecting potential fuel fraud. The system includes a web-based platform for owners to track fleet performance and a cross-platform mobile application (iOS and Android) for real-time driver tracking and performance insights. 

One of the core features of **TracklineAI** is its AI-powered fuel management system, which calculates fuel mileage at the end of each trip. It checks for discrepancies and potential fraud, ensuring that fuel consumption is accurate. The system uses multiple vehicle parameters such as car type, fuel type, trip distance, and others to calculate fuel mileage and detect any irregularities. This model is deployed on a Flask web server, providing a seamless user interface for easy access and interaction.

## Key Features

- **Driver Performance Monitoring**: Owners can track driver performance based on factors like speed, fuel consumption, and overall trip data.
- **Real-Time GPS Tracking**: The mobile application provides real-time tracking of drivers, trip routes, and performance.
- **Fuel Mileage Calculation**: AI model calculates fuel mileage at the end of each trip to ensure accurate fuel usage.
- **Fraud Detection**: The system detects any anomalies in fuel consumption, indicating potential fraud.
- **Flask Web Interface**: A user-friendly web interface where vehicle owners can monitor driver performance, fuel usage, and trip data.
- **Cross-Platform Mobile Application**: The mobile app supports both iOS and Android devices, allowing drivers and owners to interact with the system conveniently.
  
## Technologies Used

- **Flask**: Python web framework used for deploying the AI model and providing a web interface.
- **AI Model**:
  - **Machine Learning**: The model predicts fuel mileage based on various vehicle parameters, ensuring efficiency and fraud detection.
  - **Fraud Detection**: Identifies discrepancies in fuel usage and flags potential fuel fraud.
- **Kaggle**: Dataset for training the AI model, containing data on fuel consumption and vehicle parameters.
- **Mobile App (Cross-Platform)**: A mobile application built for both iOS and Android to facilitate real-time driver monitoring.
- **Python**: Used for data processing, model training, and API integration.
- **SQL**: Database for storing data related to drivers, vehicles, and trip history.

## Data Sources

The dataset used for training the AI model was sourced from **Kaggle**, including various parameters related to vehicle fuel usage and performance. The parameters used to calculate fuel mileage and detect fraud include:

- **Car Type**
- **Fuel Type**
- **Trip Distance**
- **Fuel Consumed**
- **Vehicle Weight**
- **Driving Behavior (Speed, Acceleration, etc.)**

## Installation and Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/whoisusmanali/TrackLine-AI.git
   cd TrackLine-AI
   ```

2. **Install Dependencies**:
   Create a virtual environment and install the required packages:
   ```bash
   pip install -r requirements.txt
   ```

3. **Set Up the Database**:
   Configure the database to store information on drivers, trips, and fuel usage. Update the database settings in the `config.py` file.

4. **Train the AI Model**:
   The AI model is trained using the dataset from Kaggle. To train the model:
   ```bash
   python train_model.py
   ```
   This will train the model and save it for use in the Flask application.

5. **Run the Flask Server**:
   Start the Flask server to deploy the AI model and host the web interface:
   ```bash
   python app.py
   ```
   The web application will be available at `http://127.0.0.1:5000/`.

6. **Mobile Application**:
   - The mobile app is designed to run on both iOS and Android platforms.
   - Navigate to the `mobile-app/` directory and follow the instructions for building and running the app.

## Usage

### Web Interface

Once the server is running, visit `http://127.0.0.1:5000/` to access the web interface. From there, owners can:

- **Monitor Driver Performance**: View individual and overall fleet performance, including fuel consumption, trip data, and more.
- **Check Fuel Fraud**: Calculate fuel mileage for each trip and check if there is any unusual consumption suggesting fraud.
- **View Trip Reports**: Access detailed reports on trips, fuel usage, and vehicle performance.

### Mobile Application

The mobile application allows users to:

- Track driver locations and trip details in real time.
- Monitor driver performance and receive alerts for potential fuel fraud.
- Upload trip data for analysis in the web interface.

### Example API Request

To check for fuel fraud via the Flask API:

```bash
curl -X POST -F "car_type=sedan" -F "fuel_type=petrol" -F "distance=150" -F "fuel_consumed=10" http://127.0.0.1:5000/detect_fraud
```

Response:

```json
{
  "fraud_detected": true,
  "message": "Suspicious fuel consumption detected. Please investigate."
}
```


**TracklineAI** integrates machine learning with real-time tracking to provide a powerful tool for vehicle fleet management. By offering features like fuel fraud detection, performance monitoring, and easy-to-use interfaces, this system helps vehicle owners ensure efficiency and transparency in their fleet operations.