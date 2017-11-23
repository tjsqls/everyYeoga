package everyYeoga.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;

public interface ArticleMapper {
	public boolean createArticle(@Param("groupId")String groupId, @Param("article")Article article);
	public boolean createAttachment(@Param("groupId")String groupId, @Param("articleId")String articleId, @Param("attachment")Attachment attachment); //2017.11.23 선빈 수정
	public Attachment retreiveAttachmentByArticleId(String articleId); 
	public boolean deleteAttachment(String articleId);
	public void deleteAttachmentBygroupId(String groupId);
	public boolean updateArticle(Article article);
	public boolean deleteArticle(String articleId);
	public void deleteArticleBygroupId(String groupId);
	public Article retreiveArticleByArticleId (String articleId); 
	public List<Article> retreiveAll(String groupId); 
	public boolean createReport(@Param("classifyReport")String classifyReport, @Param("articleId")String articleId);
}
