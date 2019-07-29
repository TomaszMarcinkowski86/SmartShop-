package pl.sda.dao;

public class ProductImageDaoImpl implements ProductImageDao{
    @Override
    public String getImagePathForProduct(Long id) {
        String imagePath = "images/iphone.png";
        return imagePath;
    }
}
