package com.vam.VO;

public class ProductImageVO {
	private String imageId;
	private String imageName;
	private String imagePath;
	private Long productNo;

	public ProductImageVO(String string, String replace, String originalFilename, Object object) {
		// TODO Auto-generated constructor stub
	}

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
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

	public Long getProductNo() {
		return productNo;
	}

	public void setProductNo(Long productNo) {
		this.productNo = productNo;
	}

	@Override
	public String toString() {
		return "ProductImageVO [imageId=" + imageId + ", imageName=" + imageName + ", imagePath=" + imagePath
				+ ", productNo=" + productNo + "]";
	}

}
