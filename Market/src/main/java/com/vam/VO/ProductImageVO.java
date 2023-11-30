package com.vam.VO;

	import lombok.AllArgsConstructor;
	import lombok.Data;
	import lombok.NoArgsConstructor;

	@NoArgsConstructor
	@AllArgsConstructor
	@Data
	public class ProductImageVO {

		private String image_uuid;
		private String image_uploadPath;
		private String image_name;
		private String image_type;
		
		private Long productNo;
	
}
