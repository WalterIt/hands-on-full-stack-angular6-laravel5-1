import { Injectable } from '@angular/core';
import { HttpClient, HttpParams, HttpErrorResponse } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router';
import { Observable, throwError } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';

// App imports
import { environment } from '../../../../environments/environment';
import { User } from '../user';

// Setup headers
const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json'
  })
};

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  public currentUser: User;
  private readonly apiUrl = environment.apiUrl; // <any>
  private registerUrl = this.apiUrl + '/register';
  private loginUrl = this.apiUrl + '/login';

  constructor(
    private http: HttpClient,
    private router: Router
  ) {}

  onRegister(user: User): Observable<User> {

    const request = JSON.stringify(
      { name: user.name, email: user.email, password: user.password }
    );

    return this.http.post(this.registerUrl, request, httpOptions)
    /**
     * We are using the pipe() function which allows us to chain other functions, and this is pretty interesting when we
     * are working with * observables. Inside the pipe() function, this is exactly what we're doing with the map() and
     *  catchError() functions.
     */
      .pipe(
        map((response: User) => {
          // Receive jwt token in the response
          const token: string = response['access_token'];
          // If we have a token, proceed
          if (token) {
            this.setToken(token);
            this.getUser().subscribe();
          }
          return response;
        }),
        catchError(error => this.handleError(error))
      );
  }

  onLogin(user: User): Observable<User> {

    const request = JSON.stringify(
      { email: user.email, password: user.password }
    );

    return this.http.post(this.loginUrl, request, httpOptions)
      .pipe(
        map((response: User) => {
          // Receive jwt token in the response
          const token: string = response['access_token'];
          // If we have a token, proceed
          if (token) {
            this.setToken(token);
            this.getUser().subscribe();
          }
          return response;
        }),
        catchError(error => this.handleError(error))
      );
  }

  onLogout(): Observable<User> {
    return this.http.post(this.apiUrl + '/logout', httpOptions).pipe(
      // tap() ==> The tap operator doesn’t change the observable data – it just passes it through to the next
      // operator or the method subscribe().
      tap(
        () => {
          localStorage.removeItem('token');
          this.router.navigate(['/']);
        }
      )
    );
  }

  setToken(token: string): void {
    return localStorage.setItem('token', token );
  }

  getToken(): string {
    return localStorage.getItem('token');
  }

  getUser(): Observable<User> {
    // This code receives the user's information from the API and applies this to the currentUser property.
    return this.http.get(this.apiUrl + '/me').pipe(
      tap(
        (user: User) => {
          this.currentUser = user;
        }
      )
    );
  }

  isAuthenticated(): boolean {
    // get the token
    const token: string = this.getToken();
    if (token) {
      return true;
    }
    return false;
  }

  private handleError(error: HttpErrorResponse) {
    if (error.error instanceof ErrorEvent) {
      // A client-side error.
      console.error('An error occurred:', error.error.message);
    } else {
      // The backend error.
        return throwError(error);
    }
    // return a custom error message
    return throwError('Ohps something wrong happen here; please try again later.');
  }
}
