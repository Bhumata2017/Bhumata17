package com.bhumata.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bhumata.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	//save product

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> list(Integer offset, Integer maxResults) {
		return sessionFactory.openSession()
				.createCriteria(Product.class)
				.setFirstResult(offset!=null?offset:0)
				.setMaxResults(maxResults!=null?maxResults:10)
				.list();
	}
	
	public void saveProduct(Product product) {
		Session session=sessionFactory.openSession();
		session.save(product);
		session.close();
		// TODO Auto-generated method stub

	}

	//to get product
public Product getProduct(Product product) {
		
		Session session=sessionFactory.openSession();
		Product loadProduct=(Product)session.load(Product.class,product.getpId());
		return loadProduct;
	}
	
	//list products by only one product name
	@SuppressWarnings("unchecked")
	public List<Product> listProductByName(Product product) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product p where p.productName=:productName"); 
		query.setString("productName",product.getProductName());
		List<Product> product1 = query.list();
		return product1;
		
			}
	
	
	
	
	
	//list products by Category
			@SuppressWarnings("unchecked")
			public List<Product> listProductByCategory(int refId) {
				Session session=sessionFactory.openSession();
				
				String s1="Vegetables";
				String s2="fruits";
				String s3="flowers";
				String s4="dryfruits";
				String s5="cereals";
				String s6="seeds";
				
			
				Query query=session.createQuery("from Product p where p.productCategory=:productCategory"); 
				if(refId==1)
				{
					query.setString("productCategory", s1);
				}
				
				if(refId==2)
				{
					query.setString("productCategory", s2);
				}
				if(refId==3)
				{
					query.setString("productCategory", s3);
				}
				
				
				if(refId==4)
				{
					query.setString("productCategory", s4);
					
				}

				
				if(refId==5)
				{
					query.setString("productCategory", s5);
				}

				if(refId==6)
				{
					query.setString("productCategory", s6);
				}

				
				List<Product> product1 = query.list();
				System.out.println(product1);

				return product1;
				

					}
	
	
		//list products by various product name
				@SuppressWarnings("unchecked")
				 
				public List<Product> listProductByProductNames(int refId) {
					Session session=sessionFactory.openSession();
					String[] myStringArray1 = {"Potatoes","Oninoes","Tomatoes"};
					String[] myStringArray2 = {"Cucumber","Capsicum"};
					String[] myStringArray3 = {"Cabbage","Cauliflower"};
					String[] myStringArray4 = {"Beans", "Bringal", "Okra"};
					String[] myStringArray5 = {"Gourds", "Pumpkins", "Drumsticks"};
					String[] myStringArray6 = {"Banana", "Guava", "Sapota"};
					String[] myStringArray7 = {"Papaya", "Pineapple", "Pomegranate"};
					String[] myStringArray8 = {"Apple", "Pears"};
					String[] myStringArray9 = {"Melon"};
					String[] myStringArray10 = {"Oranges", "Sweet Lime"};
					String[] myStringArray11 = {"Grapes", "Berries", "Cherries"};
					String[] myStringArray12 = {"Mangoes"};
					String[] myStringArray13 = {"Plums","Peaches"};
					String[] myStringArray14 = {"Amaranth"};
					String[] myStringArray15 = {"Anise"};
					String[] myStringArray16 = {"Basil"};
					String[] myStringArray17 = {"Caraway"};
					String[] myStringArray18 = {"Cardamom"};
					String[] myStringArray19 = {"Coriander"};
					String[] myStringArray20 = {"Cumin "};
					String[] myStringArray21 = {"Fenugreek"};
					String[] myStringArray22 = {"Rose","Marigold"};
					String[] myStringArray23 = {"Jasminum sambac"};
					String[] myStringArray24 = {"Periwinklee"};
					String[] myStringArray25 = {"Anona Hexapetala"};
					String[] myStringArray26 = {"Hibiscus"};
					String[] myStringArray27 = {"Cypress Vine"};
					String[] myStringArray28 = {"Mimusops elengi"};
					String[] myStringArray29 = {"Almonds"};
					String[] myStringArray30 = {"Cashew nut"};
					String[] myStringArray31 = {"Dates"};
					String[] myStringArray32 = {"Pistachio"};
					String[] myStringArray33 = {"Prunes"};
					String[] myStringArray34 = {"Fig"};
					String[] myStringArray35 = {"Walnuts"};
					String[] myStringArray36 = {"Dried Kiwi"};
					String[] myStringArray37 = {"Wheat"};
					String[] myStringArray38 = {"Maize"};
					String[] myStringArray39 = {"Millet"};
					String[] myStringArray40 = {"Ragi"};
					String[] myStringArray41 = {"Rice"};
					String[] myStringArray42= {"Sorghum"};
					String[] myStringArray43 = {"Sago"};
					String[] myStringArray44 = {"Semolina"};
					
					


					Query query=session.createQuery("from Product p where p.productName in (:productNames)"); 		
					if(refId==1)
					{
						query.setParameterList("productNames", myStringArray1);
					}
					else if(refId==2)
					{
						query.setParameterList("productNames", myStringArray2);
					}
					else if(refId==3)
					{
						query.setParameterList("productNames", myStringArray3);
					}
					else if(refId==4)
					{
						query.setParameterList("productNames", myStringArray4);
					}
					else if(refId==5)
					{
						query.setParameterList("productNames", myStringArray5);
					}
					else if(refId==6)
					{
						query.setParameterList("productNames", myStringArray6);
					}
					else if(refId==7)
					{
						query.setParameterList("productNames", myStringArray7);
					}
					else if(refId==8)
					{
						query.setParameterList("productNames", myStringArray8);
					}
					else if(refId==9)
					{
						query.setParameterList("productNames", myStringArray9);
					}
					else if(refId==10)
					{
						query.setParameterList("productNames", myStringArray10);
					}
					else if(refId==11)
					{
						query.setParameterList("productNames", myStringArray11);
					}
					else if(refId==12)
					{
						query.setParameterList("productNames", myStringArray12);
					}
					else if(refId==13)
					{
						query.setParameterList("productNames", myStringArray13);
					}
					else if(refId==14)
					{
						query.setParameterList("productNames", myStringArray14);
					}
					else if(refId==15)
					{
						query.setParameterList("productNames", myStringArray15);
					}
					else if(refId==16)
					{
						query.setParameterList("productNames", myStringArray16);
					}
					else if(refId==17)
					{
						query.setParameterList("productNames", myStringArray17);
					}
					else if(refId==18)
					{
						query.setParameterList("productNames", myStringArray18);
					}
					
					else if(refId==19)
					{
						query.setParameterList("productNames", myStringArray19);
					}
					
					else if(refId==20)
					{
						query.setParameterList("productNames", myStringArray20);
					}

					else if(refId==21)
					{
						query.setParameterList("productNames", myStringArray21);
					}
					
					else if(refId==22)
					{
						query.setParameterList("productNames", myStringArray22);
					}
					
					else if(refId==23)
					{
						query.setParameterList("productNames", myStringArray23);
					}
					
					else if(refId==24)
					{
						query.setParameterList("productNames", myStringArray24);
					}
					
					else if(refId==25)
					{
						query.setParameterList("productNames", myStringArray25);
					}
					
					else if(refId==26)
					{
						query.setParameterList("productNames", myStringArray26);
					}
					
					else if(refId==27)
					{
						query.setParameterList("productNames", myStringArray27);
					}
					
					else if(refId==28)
					{
						query.setParameterList("productNames", myStringArray28);
					}
					else if(refId==29)
					{
						query.setParameterList("productNames", myStringArray29);
					}
					else if(refId==30)
					{
						query.setParameterList("productNames", myStringArray30);
					}
					else if(refId==31)
					{
						query.setParameterList("productNames", myStringArray31);
					}
					else if(refId==32)
					{
						query.setParameterList("productNames", myStringArray32);
					}
					else if(refId==33)
					{
						query.setParameterList("productNames", myStringArray33);
					}
					else if(refId==34)
					{
						query.setParameterList("productNames", myStringArray34);
					}
					else if(refId==35)
					{
						query.setParameterList("productNames", myStringArray35);
					}
					else if(refId==36)
					{
						query.setParameterList("productNames", myStringArray36);
					}
					else if(refId==37)
					{
						query.setParameterList("productNames", myStringArray37);
					}
					else if(refId==38)
					{
						query.setParameterList("productNames", myStringArray38);
					}
					else if(refId==39)
					{
						query.setParameterList("productNames", myStringArray39);
					}
					
					else if(refId==40)
					{
						query.setParameterList("productNames", myStringArray40);
					}
					else if(refId==41)
					{
						query.setParameterList("productNames", myStringArray41);
					}
					else if(refId==42)
					{
						query.setParameterList("productNames", myStringArray42);
					}
					else if(refId==43)
					{
						query.setParameterList("productNames", myStringArray43);
					}
					else if(refId==44)
					{
						query.setParameterList("productNames", myStringArray44);
					}
					
					
					
					else
					{
						query.setParameterList("productNames", myStringArray1);
					}
					List<Product> product1 = query.list();
					System.out.println(product1);
					return product1;
					
						}

			
	
}
























	
			
				


