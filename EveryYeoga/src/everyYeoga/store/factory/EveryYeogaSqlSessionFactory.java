package everyYeoga.store.factory;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class EveryYeogaSqlSessionFactory {
   //¼±ºó
      private static EveryYeogaSqlSessionFactory instance;
      private static SqlSessionFactory sqlSessionFactory;
      private static final String resource = "mybatis-config.xml";
      
      private EveryYeogaSqlSessionFactory() {}
         
         public static EveryYeogaSqlSessionFactory getInstance() {
            if(instance==null) {
               instance = new EveryYeogaSqlSessionFactory();
            }
            return instance;
         }
         
         public SqlSession getSession() {
            if(sqlSessionFactory == null) {
               Reader reader = null;
               try {
               reader = Resources.getResourceAsReader(resource);
               }catch(IOException e){
                  e.printStackTrace();
               }
               sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            }
               return sqlSessionFactory.openSession();      
      }
}