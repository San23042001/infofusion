# Infofusion

Infofusion is an advanced information retrieval application that leverages Retrieval Augmented Generation (RAG) to deliver contextually relevant information to users in real-time.

## Overview

Infofusion combines the power of Flutter, FastAPI, and Gemini API to create a seamless information retrieval experience. The application uses state-of-the-art natural language processing techniques to understand user queries and provide accurate, relevant responses.


## Features

- **Real-time Information Retrieval**: Get instant answers to your queries using advanced RAG techniques
- **Cross-Platform Support**: Access Infofusion on any device through the Flutter-based frontend
- **Semantic Search**: Leverage Sentence Transformers for understanding the meaning behind your queries
- **Web Content Integration**: Extract high-quality information from web sources using Trafilatura
- **Enhanced Search Capabilities**: Supplement knowledge retrieval with Tavily search API
- **Real-time Updates**: Receive instant responses through WebSocket communication

## Technology Stack

### Frontend
- **Flutter**: Cross-platform UI framework for building natively compiled applications

### Backend
- **FastAPI**: High-performance Python web framework for building APIs
- **WebSockets**: Protocol for real-time, bidirectional communication
- **Gemini API**: Google's advanced language model for generating human-like responses
- **Sentence Transformers**: Neural network models for generating semantically meaningful embeddings
- **Tavily**: AI-powered search API for enhanced knowledge retrieval
- **Trafilatura**: Python package for web scraping and text extraction

## Architecture

```
┌─────────────┐     WebSockets     ┌─────────────┐      ┌─────────────┐
│             │<------------------>│             │<---->│  Gemini API │
│   Flutter   │    HTTP/REST       │   FastAPI   │      └─────────────┘
│  Frontend   │<------------------>│   Backend   │      ┌─────────────┐
│             │                    │             │<---->│    Tavily   │
└─────────────┘                    └─────────────┘      └─────────────┘
                                         │
                                         ▼
                              ┌─────────────────────┐
                              │ Sentence Transformers│
                              └─────────────────────┘
                                         │
                                         ▼
                              ┌─────────────────────┐
                              │     Trafilatura     │
                              └─────────────────────┘
```

## Installation

### Prerequisites
- Python 3.8+
- Flutter SDK
- Google API key for Gemini
- Tavily API key

### Backend Setup

```bash
# Clone the repository
git clone git@github.com:San23042001/infofusion.git
cd server

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Run the FastAPI server
fastapi dev main.py
```

### Frontend Setup

```bash
# Get Flutter dependencies
flutter pub get

# Run the app in debug mode
flutter run
```

## Usage

1. Launch the application
2. Enter your query in the search bar
3. Receive contextually relevant information in real-time
4. Explore related topics and dive deeper into subjects of interest

## Future Improvements

- Integration with additional LLM providers
- Implementation of user authentication
- Addition of history tracking for previous queries
- Support for voice input and output
- Enhanced visualization of information

## Acknowledgements

- Google for providing the Gemini API
- The Flutter team for their excellent cross-platform framework
- The FastAPI team for their high-performance web framework
- The creators of Sentence Transformers, Tavily, and Trafilatura

## Demo Video
[Watch the Demo Video](https://drive.google.com/file/d/14Xqjhp0It84m-xEd3CEfuw4p6-iWJ12P/view?usp=drive_link)

