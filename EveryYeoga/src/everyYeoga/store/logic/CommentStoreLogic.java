package everyYeoga.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import everyYeoga.domain.Article;
import everyYeoga.domain.Comment;
import everyYeoga.store.CommentStore;
import everyYeoga.store.factory.EveryYeogaSqlSessionFactory;
import everyYeoga.store.mapper.ArticleMapper;
import everyYeoga.store.mapper.CommentMapper;

@Repository
public class CommentStoreLogic implements CommentStore {

	@Override
	public boolean createComment(String groupId, String articleId, Comment comment) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.createComment(groupId, articleId, comment);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean updateComment(Comment comment) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.updateComment(comment);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteComment(String commentId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.deleteComment(commentId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean deleteCommentByArticleId(String articleId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.deleteCommentByArticleId(articleId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public void deleteCommentByGroupId(String groupId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.deleteCommentByGroupId(groupId);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public List<Comment> retrieveComment(String articleId) {
		// 인애
		List<Comment> list = null;
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			list = mapper.retrieveComment(articleId);
			session.commit();
		} finally {
			session.close();
		}
		return list;
	}

	
	public Comment retreiveCommentByCommentId(String commentId) { 
		// 2017.11.27 인애 추가 for 신고된 특정 comment 확인
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		Comment comment = null;
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			comment = mapper.retreiveCommentByCommentId(commentId);
			session.commit();
		}finally {
			session.close();
		}
		return comment;
	}

	@Override
	public boolean deleteCommentReport(String commentId) {
		// 인애
		SqlSession session = EveryYeogaSqlSessionFactory.getInstance().getSession();
		try {
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			mapper.deleteCommentReport(commentId);
			session.commit();
		} finally {
			session.close();
		}
		return false;
	}
}
