package com.vam.VO;

public class ProductImageVO {
	private Long imageId;
    private String imageName;
    private String imagePath;
	public Long getImageId() {
		return imageId;
	}
	public void setImageId(Long imageId) {
		this.imageId = imageId;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	@Override
	public String toString() {
		return "ProductImageVO [imageId=" + imageId + ", imageName=" + imageName + ", imagePath=" + imagePath + "]";
	}
    
}
