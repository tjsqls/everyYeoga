package everyYeoga.store.logic;


import java.util.List;

import org.springframework.stereotype.Repository;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.store.ArticleStore;

@Repository
public class ArticleStoreLogic implements ArticleStore{

	@Override
	public boolean createArticle(String groupId, Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean createAttachment(Attachment attachment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Attachment retreiveAttachmentByArticleId(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteAttachment(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void deleteAttachmentBygroupId(String groupId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean updateArticle(Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteArticle(String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void deleteArticleBygroupId(String groupId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Article retreiveArticleByArticleId(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Article> retreiveAll(String groupId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean createReport(String classifyReport, String articleId) {
		// TODO Auto-generated method stub
		return false;
	}

}
