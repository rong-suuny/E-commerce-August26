import { TestBed } from '@angular/core/testing';

import { RongShopFormService } from './rong-shop-form.service';

describe('RongShopFormService', () => {
  let service: RongShopFormService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RongShopFormService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
