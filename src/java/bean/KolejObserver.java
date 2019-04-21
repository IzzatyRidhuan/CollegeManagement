package bean;


/**
 * @author User
 * @version 1.0
 * @created 20-Apr-2019 10:44:15 PM
 */
public interface KolejObserver {

	public KolejOrder m_KolejOrder;

	public void notify();

	public void update();

}