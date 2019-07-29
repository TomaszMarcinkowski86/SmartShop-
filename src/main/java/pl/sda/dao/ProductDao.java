package pl.sda.dao; // Data Access Object - Dao

import pl.sda.entity.ProductEntity;

import java.util.List;
import java.util.Optional;

public interface ProductDao {

    List<ProductEntity> getProducts();

    Optional<ProductEntity> getProduct(Long id);
}
