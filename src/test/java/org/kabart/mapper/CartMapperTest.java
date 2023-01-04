package org.kabart.mapper;

import java.util.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
      "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
      "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartMapperTest {

   @Setter(onMethod_ = @Autowired)
   private CartsMapper mapper;

   

   /*
    * @Test public void testinsert() {
    * 
    * log.info(mapper.insert("anna", 108607, 1)); log.info("insert");
    * 
    * }
    */

   /* 아래로 남승현작성 */

   @Test
   public void testIsExist() {
      log.info(mapper.isExist("test", 8614));
   }

   @Test
   public void testUpdate() {
      log.info(mapper.quantityUpdate("test", 8614, 3));
   }
   
   @Test
   public void testGetCarts() {

      log.info("helloooooooo");
      // List<CartsVO> list = mapper.getList();
      // log.info(list.get(0));
      mapper.getCarts("tori").forEach(item -> log.info(item));
   }
   @Test
   public void removeCart() {
      List<Integer> prod_id = new ArrayList<>();
      prod_id.add(42431);
      prod_id.add(44405);
      prod_id.add(78931);
      log.info(mapper.removeCart("tori",42431));
   }

}