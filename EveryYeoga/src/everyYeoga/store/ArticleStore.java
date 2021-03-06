package everyYeoga.store;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;

public interface ArticleStore {
	public boolean createArticle(Article article); // 2017.12.04 파라미터 수정 String groupId 제거
	public boolean createAttachment(String groupId, String articleId, Attachment attachment); //2017.11.23 선빈 수정
	public List<Attachment> retreiveAttachmentByArticleId(String articleId); 
	public boolean deleteAttachment(String articleId);
	public void deleteAttachmentBygroupId(String groupId);
	public boolean updateArticle(Article article);
	public boolean deleteArticle(String articleId);
	public boolean deleteArticleReport(String articleId); // 2017.12.01 인애 추가
	public void deleteArticleBygroupId(String groupId);
	public Article retreiveArticleByArticleId (String articleId); 
	public List<Article> retreiveAll(String groupId); 
	public Attachment retrieveAttachmentByFileName(String fileName, String filePath);//2017.12.05 메소드 추가 선빈

}
