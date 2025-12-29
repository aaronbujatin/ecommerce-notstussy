import { Routes } from '@angular/router';
import { ProductDetail } from './features/product-detail/product-detail';

export const routes: Routes = [
    {
        path: 'products/:id',
        component: ProductDetail
    }
];
