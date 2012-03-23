package mock.appcode.web.action;

public interface IAction {

	public String getAll() throws Exception;

	public String add() throws Exception;

	public String setActive() throws Exception;

	public String setInActive() throws Exception;

	public String amend() throws Exception;

	public String getByActive() throws Exception;
}
