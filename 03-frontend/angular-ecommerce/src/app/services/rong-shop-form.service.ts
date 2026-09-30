import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { Country } from '../common/country';
import { Observable, map, of, tap } from 'rxjs';
import { State } from '../common/state';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root',
})
export class RongShopFormService {
  private countriesUrl = environment.rongshopApiUrl + '/countries';
  private statesUrl = environment.rongshopApiUrl + '/states';

  constructor(private httpClient: HttpClient) {}

  getCountries(): Observable<Country[]> {
    return this.httpClient.get<GetResponseCountries>(this.countriesUrl).pipe(
      map((response) => response._embedded.countries),
      // test 3
      tap((countries) => {
        // Log the states data here
        console.log('Countries Data:', countries);
      })
    );
  }

  getStates(theCountryCode: string): Observable<State[]> {
    //search url
    const searchStatesUrl = `${this.statesUrl}/search/findByCountryCode?code=${theCountryCode}`;

    // test 4
    console.log('searchStatesUrl:', searchStatesUrl);

    return this.httpClient
      .get<GetResponseStates>(searchStatesUrl)
      .pipe(map((response) => response._embedded.states));
  }

  getCreditCardMonths(startMonth: number): Observable<number[]> {
    let data: number[] = [];

    //build an array for "Month" dropdown list
    // - start at urrent month and loop until

    for (let theMonth = startMonth; theMonth <= 12; theMonth++) {
      data.push(theMonth);
    }

    return of(data);
  }

  getCriditCardYears(): Observable<number[]> {
    let data: number[] = [];

    // build an array for "Year" downlist list
    // -start at current year and loop for next 10 year

    const startYear: number = new Date().getFullYear();
    const endYear: number = startYear + 10;

    for (let theYear = startYear; theYear <= endYear; theYear++) {
      data.push(theYear);
    }

    return of(data);
  }
}

interface GetResponseCountries {
  _embedded: {
    countries: Country[];
  };
}

interface GetResponseStates {
  _embedded: {
    states: State[];
  };
}
