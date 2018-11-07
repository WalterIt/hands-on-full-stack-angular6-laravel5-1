import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from '../_services/auth.service';

@Injectable()
export class AuthGuard implements CanActivate {

  constructor(
    private router: Router,
    private auth: AuthService) {}

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {

      if (this.auth.isAuthenticated()) {
        // logged in so return true
        return true;
      }

      // not logged in so redirect to login page with the return url
      // We are also using the queryParams and returnUrl functions to send the user back to where they came from.
      this.router.navigate(['/login'], { queryParams: { returnUrl: state.url }});

      return true;
  }
}
