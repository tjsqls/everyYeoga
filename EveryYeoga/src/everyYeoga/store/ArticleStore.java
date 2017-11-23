package everyYeoga.store;

import java.util.List;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;

public interface ArticleStore {
	public boolean createArticle(String groupId, Article article);
	public boolean createAttachment(Attachment attachment);
	public Attachment retreiveAttachmentByArticleId(String articleId); 
	public boolean deleteAttachment(String articleId);
	public void deleteAttachmentBygroupId(String groupId);
	public boolean updateArticle(Article article);
	public boolean deleteArticle(String articleId);
	public void deleteArticleBygroupId(String groupId);
	public Article retreiveArticleByArticleId (String articleId); 
	public List<Article> retreiveAll(String groupId); 
	public boolean createReport(String classifyReport, String articleId);

}
