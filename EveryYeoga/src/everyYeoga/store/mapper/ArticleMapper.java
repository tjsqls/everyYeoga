package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;

public interface ArticleMapper {
	public boolean createArticle(Article article);
	public boolean createAttachment(@Param("groupId")String groupId, @Param("articleId")String articleId, @Param("attachment")Attachment attachment); //2017.11.23 선빈 수정
	public List<Attachment> retreiveAttachmentByArticleId(String articleId); 
	public boolean deleteAttachment(String articleId);
	public void deleteAttachmentBygroupId(String groupId);
	public boolean updateArticle(Article article);
	public boolean deleteArticle(String articleId);
	public boolean deleteArticleReport(String articleId);
	public void deleteArticleBygroupId(String groupId);
	public Article retreiveArticleByArticleId (String articleId); 
	public List<Article> retreiveAll(String groupId); 
	public boolean createReport(@Param("classifyReport")String classifyReport, @Param("articleId")String articleId);
	public Attachment retrieveAttachmentByFileName(@Param("fileName")String fileName, @Param("filePath")String filePath);//2017.12.05 메소드 추가 선빈
}
