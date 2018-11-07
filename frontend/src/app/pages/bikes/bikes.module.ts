import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { BikesRoutingModule } from './bikes-routing.module';
import { BikesComponent } from './bikes.component';
import { BikeDetailComponent } from './bike-detail/bike-detail.component';
import { BikeListComponent } from './bike-list/bike-list.component';

@NgModule({
  imports: [
    CommonModule,
    NgbModule,
    BikesRoutingModule
  ],
  declarations: [BikesComponent, BikeDetailComponent, BikeListComponent]
})
export class BikesModule { }
