# Postmortem for ALX Project 0x19 Outage

# Summary

On October 11, 2023 at 06:00 WAT, an isolated Ubuntu 14.04 container running an Apache web server experienced an outage. GET requests to the server returned 500 Internal Server Error's, instead of the expected HTML file for a simple Holberton WordPress site.

# Investigation

Upon investigation, it was determined that the cause of the outage was a typo in the wp-settings.php file. The file was attempting to load the file class-wp-locale.phpp, which does not exist. The correct file name is class-wp-locale.php.

# Resolution

The typo was fixed by removing the trailing p from the line in wp-settings.php that loads the file. A Puppet manifest was also written to automate fixing of the error in the future.

# Impact

The outage lasted for approximately 1 hour. No data was lost and the WordPress site is now fully functional.

# Recommendations

Review all code carefully before deploying it to production.
Implement automated tests for all code.
Have a plan in place for responding to outages quickly and effectively.


# Additional Notes

The outage was caused by a human error, but it is important to note that even the most experienced developers make mistakes. It is important to have safeguards in place to catch errors before they cause outages, such as code review and automated testing.

The outage also highlights the importance of having a plan in place for responding to outages quickly and effectively. In this case, the team was able to quickly identify and fix the cause of the outage, and minimize the impact on users.

# How to prevent future outages

This outage was caused by a typo in the application code, not the web server. To prevent similar outages in the future, please keep the following in mind:

Test thoroughly. Test the application before deploying it to production. This error would have been caught earlier if the application had been tested more thoroughly.
Enable status monitoring. Use an uptime-monitoring service such as UptimeRobot to alert you immediately if the website goes down.
Automate error handling. In response to this error, I wrote a Puppet manifest to automate fixing the error if it occurs again.
Even the best programmers make mistakes, so it is important to have safeguards in place to catch errors before they cause outages. By testing thoroughly, enabling status monitoring, and automating error handling, you can reduce the risk of outages caused by application errors.

# Additional notes

The Puppet manifest you wrote is a great example of how to automate error handling. It is important to share this knowledge with other developers so that they can learn from your experience.
It is also important to remember that even though we are programmers, we are still human. We make mistakes. It is important to be humble and to learn from our mistakes.
Thank you for sharing this postmortem. It is a valuable resource for other developers.

