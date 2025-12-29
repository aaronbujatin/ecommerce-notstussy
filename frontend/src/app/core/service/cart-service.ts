import { HttpClient } from '@angular/common/http';
import { inject, Injectable } from '@angular/core';
import { Cart } from '../../model/cart';
import { environment } from '../../../environment/environemnt-development';

@Injectable({
  providedIn: 'root',
})
export class CartService {
  
   private httpClient = inject(HttpClient)

  getCartByUserId(userId: number) {
    return this.httpClient.get<Cart>(`${environment.CART_API}/api/v1/cart/${userId}`)
  } 

}
