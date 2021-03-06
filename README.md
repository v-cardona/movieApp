# movie_app

## About The Project
It is a movie app using TheMovieDatabase (TMDB) as API that show a home screen with popular, trending and soon movies, description of each one including the cast and with the option to add to favourites. The development of the application has been based on [Prateek Sharma - movie_app_tutorial](https://github.com/TechieBlossom/movie_app_tutorial/), where good practices have been applied for the directory structure, use of BLoC Pattern and internalization of the system

### Built With
* [Flutter](https://flutter.dev/)


## Getting Started 🚀

_These instructions will allow you to get a copy of the project running on your local machine for development purposes._

### Installation
1. In order to get this application run it is necesary to have a key API of TMDB and included to the code. To obtain access, get an account into [TMDB](https://www.themoviedb.org), go to settings and API section and copy the value under the API Key (v3 auth).

2. Clone the repo
   ```sh
   git clone https://github.com/v-cardona/movieApp.git
   ```

3. Now create a file named **api_constants.dart** on *lib/data/core* directory and add the following code with your api key.
  ```sh
  class ApiConstants { 
    ApiConstants._();

    static const String BASE_URL = "https://api.themoviedb.org/3/";
    static const String API_KEY = "YOUR_API_KEY";
    static const String BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w500";
  }
  ```
  
  4. To get running feedback page, you have to create and account and a project on [Wiredash console](https://console.wiredash.io/). On file **api_constants.dart** created before add the following code with your project id and secret key.
  ```sh
  static const String WIREDASH_PROJECT_ID = "YOUR_PROJECT_ID";
  static const String WIREDASH_KEY = "SECRET_KEY";
  ```
  
  4. Run flutter project and enjoy
