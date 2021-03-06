package everyYeoga.store.logic;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import everyYeoga.domain.Article;
import everyYeoga.domain.Attachment;
import everyYeoga.store.ArticleStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.ArticleMapper;

@Repository
public class ArticleStoreLogic implements ArticleStore{

	@Override
	public boolean createArticle(Article article) {
		//선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.createArticle(article);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean createAttachment(String groupId, String articleId, Attachment attachment) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.createAttachment(groupId, articleId, attachment);
			session.commit();
			
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public List<Attachment> retreiveAttachmentByArticleId(String articleId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		List<Attachment> attachments = null;
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			attachments = mapper.retreiveAttachmentByArticleId(articleId);
		}finally {
			session.close();
		}
		return attachments;
	}

	@Override
	public boolean deleteAttachment(String articleId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.deleteAttachment(articleId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public void deleteAttachmentBygroupId(String groupId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.deleteAttachmentBygroupId(groupId);
			session.commit();
		}finally {
			session.close();
		}
	}

	@Override
	public boolean updateArticle(Article article) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.updateArticle(article);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteArticle(String articleId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.deleteArticle(articleId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public void deleteArticleBygroupId(String groupId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.deleteArticleBygroupId(groupId);
			session.commit();
		}finally {
			session.close();
		}
		
	}

	@Override
	public Article retreiveArticleByArticleId(String articleId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		Article article = null;
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			article = mapper.retreiveArticleByArticleId(articleId);
			
		}finally {
			session.close();
		}
		return article;
	}

	@Override
	public List<Article> retreiveAll(String groupId) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		List<Article> list = null;
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			list = mapper.retreiveAll(groupId);
		}finally {
			session.close();
		}
		return list;
	}

	@Override
	public boolean deleteArticleReport(@RequestParam("classifyId")String articleId) {
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			mapper.deleteArticleReport(articleId);
			session.commit();
		}finally {
			session.close();
		}
		return false;
	}

	@Override
	public Attachment retrieveAttachmentByFileName(String fileName, String filePath) {
		// 선빈
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		Attachment attachment = null;
		try {
			ArticleMapper mapper = session.getMapper(ArticleMapper.class);
			attachment = mapper.retrieveAttachmentByFileName(fileName, filePath);
		}finally {
			session.close();
		}
		return attachment;
	}



}
