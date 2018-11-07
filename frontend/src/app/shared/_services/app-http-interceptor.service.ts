/***
 * Creating an HTTP interceptor
Let's take a look at how to use Angular's HttpInterceptor interface to make authenticated HTTP requests.
When we are handling authentication in an Angular app, most of the time, it's generally best to put everything
you need in a dedicated service, like we did previously.
Any authentication service should have a few basic methods for allowing users to log in and log out. It should also include
a method for retrieving a JSON Web Token and putting it into localStorage (like we did previously), on the client, and a way
to determine if the user is authenticated or not, in our case, using the isAuthenticated() function on auth.service.ts.

app-http-interceptor

*/

import { Injectable, Injector } from '@angular/core';
import { HttpEvent, HttpHeaders, HttpInterceptor, HttpHandler, HttpRequest, HttpErrorResponse, HttpResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError, map, tap } from 'rxjs/operators';
import { Router } from '@angular/router';
// App import
import { AuthService } from '../../pages/auth/_services/auth.service';

@Injectable()
export class AppHttpInterceptorService implements HttpInterceptor {

  constructor(public auth: AuthService, private router: Router  ) { }

  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

    console.log('interceptor running');
    // Get the token from auth service.
    const authToken = this.auth.getToken();

    if (authToken) {
      // Clone the request to add the new header.
      const authReq = req.clone(
        { headers: req.headers.set('Authorization', `Bearer ${authToken}`)}
      );
      console.log('interceptor running with new headers');

      // send the newly created request
      return next.handle(authReq).pipe(
        tap((event: HttpEvent<any>) => {
          if (event instanceof HttpResponse) {
            // Response wiht HttpResponse type
            console.log('TAP function', event);

          }
        }, (err: any) => {
          console.log(err);
          if (err instanceof HttpErrorResponse) {
            if (err.status === 401) {
              localStorage.removeItem('token');
              this.router.navigate(['/']);
            }
          }
        })
      );

    } else {
        console.log('interceptor without changes');
        return next.handle(req);
    }
  }
}
