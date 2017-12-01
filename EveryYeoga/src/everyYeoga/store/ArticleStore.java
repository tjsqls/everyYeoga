package everyYeoga.store;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;

public interface ArticleStore {
	public boolean createArticle(String groupId, Article article);
	public boolean createAttachment(String groupId, String articleId, Attachment attachment); //2017.11.23 선빈 수정
	public Attachment retreiveAttachmentByArticleId(String articleId); 
	public boolean deleteAttachment(String articleId);
	public void deleteAttachmentBygroupId(String groupId);
	public boolean updateArticle(Article article);
	public boolean deleteArticle(String articleId);
	public boolean deleteArticleReport(String articleId); // 2017.12.01 인애 추가
	public void deleteArticleBygroupId(String groupId);
	public Article retreiveArticleByArticleId (String articleId); 
	public List<Article> retreiveAll(String groupId); 
	public boolean createReport(String classifyReport, String articleId);

}
