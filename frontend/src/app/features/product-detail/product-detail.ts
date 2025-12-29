import { Component, inject, OnInit, signal } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ProductService } from '../../core/product-service';
import { Product } from '../../model/product';
import { CommonModule, CurrencyPipe } from '@angular/common';

@Component({
  selector: 'app-product-detail',
  imports: [CurrencyPipe, CommonModule],
  templateUrl: './product-detail.html',
  styleUrl: './product-detail.css',
})
export class ProductDetail implements OnInit {

  productService = inject(ProductService)
  activatedRoute = inject(ActivatedRoute)
  router = inject(Router)

  product = signal<Product | null>(null);

  imageSrcSingleBox: string | undefined
  imageSrcWholeSet: string | undefined
  isSeries: boolean = false;

  ngOnInit(): void {
    const id = this.activatedRoute.snapshot.params['id'];
    this.getProductById(id);
  }

  getProductById(id: number) {
    this.productService.getProductById(id).subscribe({
      next: (data) => {

        this.product.set(data);
        this.isSeries = this.product()?.productUnits.length! > 0
        this.imageSrcSingleBox = this.product()?.images[0]
        this.imageSrcWholeSet = this.product()?.images[4]

      },
      error: (err) => {

      }
    });
  }
  selectedVariant: string = 'single';

  variants = [
    {
      id: 'single',
      name: 'Single Box',
      image: 'assets/images/single-box.jpg'
    },
    {
      id: 'whole',
      name: 'Whole Set',
      image: 'assets/images/whole-set.jpg'
    }
  ];


  selectVariant(variantId: string): void {
    this.selectedVariant = variantId;
  }

  isSelected(variantId: string): boolean {
    return this.selectedVariant === variantId;
  }


}
