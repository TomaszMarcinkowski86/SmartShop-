package pl.sda.mapper;

import pl.sda.entity.ProductEntity;
import pl.sda.model.Product;

public class ProductMapper {

    public static Product mapToProduct(ProductEntity product, String imagePath) {
        return Product.builder()
                .id(product.getId())
                .brand(product.getBrand())
                .model(product.getModel())
                .operatingSystem(product.getOperatingSystem())
                .price(product.getSellingPrice())
                .primaryCameraMp(product.getPrimaryCameraMp())
                .secondaryCameraMp(product.getSecondaryCameraMp())
                .imagePath(imagePath)
                .build();
    }
}
